.class public Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkResumptionBroadcastReceiver.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final backgroundHandler:Landroid/os/Handler;

.field private final backgroundThread:Landroid/os/HandlerThread;

.field private final interruptCondition:Ljava/util/concurrent/locks/Condition;

.field private final interruptLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->interruptLock:Ljava/util/concurrent/locks/Lock;

    .line 34
    iput-object p2, p0, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->interruptCondition:Ljava/util/concurrent/locks/Condition;

    .line 35
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "NetworkResumptionBroadcastReceiver"

    const/16 v0, 0xa

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->backgroundThread:Landroid/os/HandlerThread;

    .line 36
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->backgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->backgroundHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "connectivity"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 59
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 60
    sget-object p2, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Received connectivity event: {}"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    sget-object p1, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Connectivity restored, signalling"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->interruptLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 66
    :try_start_0
    iget-object p1, p0, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->interruptCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object p1, p0, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->interruptLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->interruptLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 69
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 3

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->backgroundHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
