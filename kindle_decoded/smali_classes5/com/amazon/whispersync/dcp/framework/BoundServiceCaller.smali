.class public abstract Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;
.super Ljava/lang/Object;
.source "BoundServiceCaller.java"


# static fields
.field private static final CONNECTION_TIMEOUT:J

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.BoundServiceCaller"


# instance fields
.field private final mBindingFlags:I

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLocker:[Ljava/lang/Object;

.field private mServiceConnectionWasEstablished:Z

.field private final mServiceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->CONNECTION_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 29
    iput-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mLocker:[Ljava/lang/Object;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 40
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mServiceIntent:Landroid/content/Intent;

    .line 42
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mServiceConnectionWasEstablished:Z

    .line 44
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$1;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$1;-><init>(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;)V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mConnection:Landroid/content/ServiceConnection;

    .line 76
    iput p3, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mBindingFlags:I

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mServiceConnectionWasEstablished:Z

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mServiceConnectionWasEstablished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;)[Ljava/lang/Object;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mLocker:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->getIntentDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIntentDescription()Ljava/lang/String;
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 176
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "unknown component, intent: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private safeUnbind()V
    .locals 4

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->getIntentDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "IllegalArgumentException is received during unbinding from %s. Ignored."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final call()Z
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mLocker:[Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mServiceIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mConnection:Landroid/content/ServiceConnection;

    iget v4, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mBindingFlags:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 96
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->TAG:Ljava/lang/String;

    const-string v1, "Failed to bind to service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 100
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    new-instance v2, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$2;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$2;-><init>(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;)V

    sget-wide v3, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->CONNECTION_TIMEOUT:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    .line 87
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempted to reuse a BoundServiceCaller.  Call method can only be executed once."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 92
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected serviceTimedOut()V
    .locals 0

    return-void
.end method

.method protected unbind()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mLocker:[Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->safeUnbind()V

    const/4 v1, 0x0

    .line 136
    iput-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->mConnection:Landroid/content/ServiceConnection;

    .line 138
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

.method protected useService(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->useService(Landroid/os/IBinder;)V

    return-void
.end method

.method protected useService(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
