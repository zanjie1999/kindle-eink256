.class public Lcom/amazon/kcp/debug/MemoryInfoLogger;
.super Ljava/lang/Object;
.source "MemoryInfoLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kcp/debug/MemoryInfoLogger;

.field private static interval:I

.field private static stopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kcp/debug/MemoryInfoLogger;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/MemoryInfoLogger;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    .line 13
    sput v0, Lcom/amazon/kcp/debug/MemoryInfoLogger;->interval:I

    const/4 v0, 0x1

    .line 15
    sput-boolean v0, Lcom/amazon/kcp/debug/MemoryInfoLogger;->stopped:Z

    .line 17
    new-instance v0, Lcom/amazon/kcp/debug/MemoryInfoLogger;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/MemoryInfoLogger;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/MemoryInfoLogger;->instance:Lcom/amazon/kcp/debug/MemoryInfoLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/debug/MemoryInfoLogger;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kcp/debug/MemoryInfoLogger;->instance:Lcom/amazon/kcp/debug/MemoryInfoLogger;

    return-object v0
.end method


# virtual methods
.method public getPollingInterval()I
    .locals 1

    .line 28
    sget v0, Lcom/amazon/kcp/debug/MemoryInfoLogger;->interval:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/amazon/kcp/debug/MemoryInfoLogger;->stopped:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    .line 53
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 54
    :goto_0
    sget-boolean v1, Lcom/amazon/kcp/debug/MemoryInfoLogger;->stopped:Z

    if-nez v1, :cond_0

    .line 55
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MemInfo(KB): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "dPSS:"

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nPSS:"

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oPSS:"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tPSS:"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget v2, Lcom/amazon/kcp/debug/MemoryInfoLogger;->interval:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    sget-object v1, Lcom/amazon/kcp/debug/MemoryInfoLogger;->TAG:Ljava/lang/String;

    const-string v2, "Interrupted while sleeping between memInfo dump"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start(I)V
    .locals 2

    .line 32
    const-class v0, Lcom/amazon/kcp/debug/MemoryInfoLogger;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-boolean v1, Lcom/amazon/kcp/debug/MemoryInfoLogger;->stopped:Z

    if-eqz v1, :cond_1

    if-lez p1, :cond_0

    .line 35
    sput p1, Lcom/amazon/kcp/debug/MemoryInfoLogger;->interval:I

    :cond_0
    const/4 p1, 0x0

    .line 37
    sput-boolean p1, Lcom/amazon/kcp/debug/MemoryInfoLogger;->stopped:Z

    .line 38
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 40
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 2

    .line 44
    const-class v0, Lcom/amazon/kcp/debug/MemoryInfoLogger;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-boolean v1, Lcom/amazon/kcp/debug/MemoryInfoLogger;->stopped:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 46
    sput-boolean v1, Lcom/amazon/kcp/debug/MemoryInfoLogger;->stopped:Z

    .line 48
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
