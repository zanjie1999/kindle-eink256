.class public Lcom/amazon/whispersync/dcp/framework/ServiceBinder;
.super Ljava/lang/Object;
.source "ServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/ServiceBinder$BindFailedException;,
        Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.ServiceBinder"


# instance fields
.field private mBoundComponent:Landroid/content/ComponentName;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mFlags:I

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mRetval:Ljava/lang/Object;

.field private mState:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

.field private final mStateChanged:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mStateChanged:Ljava/util/concurrent/locks/Condition;

    .line 47
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;->Prebind:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mState:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    .line 51
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mIntent:Landroid/content/Intent;

    .line 53
    iput p3, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mFlags:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;)Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mState:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;)Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mState:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    return-object p1
.end method

.method static synthetic access$202(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mRetval:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$302(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mBoundComponent:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mStateChanged:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method private enforceNotMainThread()V
    .locals 2

    .line 253
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceState(Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;Ljava/lang/String;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mState:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    if-ne v0, p1, :cond_0

    return-void

    .line 265
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private safeUnbind()V
    .locals 3

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->unbind()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unbind service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private startBind()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/framework/ServiceBinder$BindFailedException;
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;-><init>(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mConnection:Landroid/content/ServiceConnection;

    .line 159
    :try_start_0
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;->Binding:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    iput-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mState:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    .line 160
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mFlags:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 179
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$BindFailedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$BindFailedException;-><init>(Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 170
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;->Unbound:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    iput-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mState:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    .line 171
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->TAG:Ljava/lang/String;

    const-string v2, "Reporting Failed Metrics, due to failed binding"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private unsafeBind(Lcom/amazon/whispersync/dcp/framework/Timeout;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 77
    :try_start_0
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;->Prebind:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    const-string v1, "Cannot use a BoundServiceHolder instance more than once."

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->enforceState(Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->startBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->waitForBind(Lcom/amazon/whispersync/dcp/framework/Timeout;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/dcp/framework/ServiceBinder$BindFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 88
    :try_start_1
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->TAG:Ljava/lang/String;

    const-string v1, "Failed to bind service: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->safeUnbind()V

    .line 98
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mRetval:Ljava/lang/Object;

    return-object p1

    .line 94
    :goto_1
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->safeUnbind()V

    throw p1
.end method

.method private waitForBind(Lcom/amazon/whispersync/dcp/framework/Timeout;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mState:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;->Bound:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    if-eq v0, v1, :cond_1

    .line 191
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/Timeout;->getRemainingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 196
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mStateChanged:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/Timeout;->getTimeoutUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    sget-object p1, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->TAG:Ljava/lang/String;

    const-string v0, "Timeout binding service."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public bind(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->enforceNotMainThread()V

    .line 61
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 64
    :try_start_0
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/Timeout;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/Timeout;-><init>(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->unsafeBind(Lcom/amazon/whispersync/dcp/framework/Timeout;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mBoundComponent:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getService()Ljava/lang/Object;
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mRetval:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public unbind()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mState:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;->Binding:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mState:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;->Bound:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 214
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 216
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;->Unbound:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mState:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
