.class public Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;
.super Ljava/lang/Object;
.source "ConnectivityEnforcer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTIVITY_TIMEOUT:J

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.ConnectivityEnforcer"


# instance fields
.field private final mConnectivityManager:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

.field private final mContext:Landroid/content/Context;

.field private final mType:I

.field private final mWaitForConnectionMilliSeconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->DEFAULT_CONNECTIVITY_TIMEOUT:J

    return-void
.end method

.method constructor <init>(JLandroid/content/Context;Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->mWaitForConnectionMilliSeconds:J

    .line 79
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->mContext:Landroid/content/Context;

    .line 80
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->mConnectivityManager:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

    .line 81
    iput p5, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->mType:I

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 19
    sget-wide v0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->DEFAULT_CONNECTIVITY_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->mConnectivityManager:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->mType:I

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->mWaitForConnectionMilliSeconds:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)Ljava/lang/Boolean;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->blockForConnection()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private blockForConnection()Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 131
    iget v2, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Blocking for network type %d connectivity"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 132
    sget-object v2, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 134
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->getConnectivityStateReceiver(Ljava/util/concurrent/CountDownLatch;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->registerConnectivityStateListener(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 139
    :try_start_0
    iget-wide v4, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->mWaitForConnectionMilliSeconds:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 143
    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 144
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :goto_1
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v1
.end method

.method private blockForConnectionTask()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$1;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$1;-><init>(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private getConnectivityStateReceiver(Ljava/util/concurrent/CountDownLatch;)Landroid/content/BroadcastReceiver;
    .locals 1

    .line 154
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$2;-><init>(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private static registerConnectivityStateListener(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public waitForConnectivity()Ljava/lang/Boolean;
    .locals 3

    .line 86
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->blockForConnectionTask()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 90
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->TAG:Ljava/lang/String;

    const-string v2, "ExecutionException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 94
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->TAG:Ljava/lang/String;

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 101
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
