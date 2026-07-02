.class public abstract Lcom/amazon/identity/auth/device/df;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.df"

.field private static final cI:J


# instance fields
.field private cL:Landroid/content/ServiceConnection;

.field private cP:Z

.field private final jj:[Ljava/lang/Object;

.field private final jk:Landroid/content/Intent;

.field private final jl:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/df;->cI:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 24
    iput-object v1, p0, Lcom/amazon/identity/auth/device/df;->jj:[Ljava/lang/Object;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 42
    iput-object p1, p0, Lcom/amazon/identity/auth/device/df;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/amazon/identity/auth/device/df;->jk:Landroid/content/Intent;

    .line 44
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/df;->cP:Z

    .line 46
    new-instance p1, Lcom/amazon/identity/auth/device/df$1;

    invoke-direct {p1, p0}, Lcom/amazon/identity/auth/device/df$1;-><init>(Lcom/amazon/identity/auth/device/df;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/df;->cL:Landroid/content/ServiceConnection;

    or-int/lit8 p1, p3, 0x4

    .line 1085
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-lt p2, p3, :cond_0

    or-int/lit8 p1, p1, 0x10

    .line 78
    :cond_0
    iput p1, p0, Lcom/amazon/identity/auth/device/df;->jl:I

    return-void

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/df;)Z
    .locals 1

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/df;->cP:Z

    return v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/identity/auth/device/df;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/df;)[Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/identity/auth/device/df;->jj:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/df;)Landroid/content/ServiceConnection;
    .locals 1

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/amazon/identity/auth/device/df;->cL:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic d(Lcom/amazon/identity/auth/device/df;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/amazon/identity/auth/device/df;->cP:Z

    return p0
.end method

.method static synthetic e(Lcom/amazon/identity/auth/device/df;)Landroid/content/Intent;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/identity/auth/device/df;->jk:Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public final call()Z
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/amazon/identity/auth/device/df;->jj:[Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/df;->cL:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/amazon/identity/auth/device/df;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/df;->jk:Landroid/content/Intent;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/df;->cL:Landroid/content/ServiceConnection;

    iget v4, p0, Lcom/amazon/identity/auth/device/df;->jl:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 110
    sget-object v0, Lcom/amazon/identity/auth/device/df;->TAG:Ljava/lang/String;

    const-string v1, "Failed to bind to service."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 114
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    new-instance v2, Lcom/amazon/identity/auth/device/df$2;

    invoke-direct {v2, p0}, Lcom/amazon/identity/auth/device/df$2;-><init>(Lcom/amazon/identity/auth/device/df;)V

    sget-wide v3, Lcom/amazon/identity/auth/device/df;->cI:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    .line 101
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempted to reuse a BoundServiceCaller.  Call method can only be executed once."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 106
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected serviceDisconnected()V
    .locals 0

    return-void
.end method

.method protected serviceTimedOut()V
    .locals 0

    return-void
.end method

.method protected unbind()V
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/amazon/identity/auth/device/df;->jj:[Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/df;->cL:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1163
    :try_start_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/df;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/df;->cL:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1170
    :catch_0
    :try_start_2
    sget-object v1, Lcom/amazon/identity/auth/device/df;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException is received during unbinding from %s. Ignored."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/identity/auth/device/df;->jk:Landroid/content/Intent;

    .line 1171
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1170
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 154
    iput-object v1, p0, Lcom/amazon/identity/auth/device/df;->cL:Landroid/content/ServiceConnection;

    .line 156
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected useService(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/df;->useService(Landroid/os/IBinder;)V

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
