.class public abstract Lcom/amazon/identity/auth/device/dg;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/dg$b;,
        Lcom/amazon/identity/auth/device/dg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field static final cI:J


# instance fields
.field private final jn:Ljava/util/concurrent/Executor;

.field private final jo:Ljava/lang/String;

.field private final jp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/dg$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private jq:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private jr:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/dg$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/dg;->cI:J

    .line 33
    const-class v0, Lcom/amazon/identity/auth/device/dg;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dg;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dg;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dg;->jo:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/amazon/identity/auth/device/dg;->jn:Ljava/util/concurrent/Executor;

    .line 110
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dg;->jp:Ljava/util/List;

    .line 111
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dg;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/dg;)Ljava/lang/Object;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/identity/auth/device/dg;->jq:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/identity/auth/device/dg;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/dg;)Landroid/content/ComponentName;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/identity/auth/device/dg;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/dg;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/identity/auth/device/dg;->mQueue:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/amazon/identity/auth/device/dg;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/amazon/identity/auth/device/dg;->mQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/amazon/identity/auth/device/dg;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/identity/auth/device/dg;->jn:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private declared-synchronized f(Lcom/amazon/identity/auth/device/dg$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/dg$a<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->jq:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->mQueue:Ljava/util/List;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dg;->mQueue:Ljava/util/List;

    .line 321
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/identity/auth/device/dg$1;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/dg$1;-><init>(Lcom/amazon/identity/auth/device/dg;)V

    sget-wide v2, Lcom/amazon/identity/auth/device/dg;->cI:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->mQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 357
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->jn:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getComponentName()Landroid/content/ComponentName;
    .locals 3

    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->mComponentName:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 295
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dg;->jo:Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/eb;->le:Lcom/amazon/identity/auth/device/eb$a;

    .line 296
    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/eb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/eb$a;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dg;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 299
    sget-object v0, Lcom/amazon/identity/auth/device/dg;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dg;->jo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/dg;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dg;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->mComponentName:Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public declared-synchronized a(Lcom/amazon/identity/auth/device/dg$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/dg$a<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dg;->cK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dg$a;->onError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/dg;->f(Lcom/amazon/identity/auth/device/dg$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/amazon/identity/auth/device/dg$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/dg$a<",
            "TT;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->jq:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 137
    monitor-exit p0

    return p1

    .line 141
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/dg;->f(Lcom/amazon/identity/auth/device/dg$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 142
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/amazon/identity/auth/device/dg$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/dg$a<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->jp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cK()Z
    .locals 5

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->jq:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/amazon/identity/auth/device/dg;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "already bound: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dg;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return v1

    .line 158
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/dg;->jr:Z

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lcom/amazon/identity/auth/device/dg;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bind already initiated: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dg;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    monitor-exit p0

    return v1

    .line 164
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dg;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 167
    monitor-exit p0

    return v2

    .line 170
    :cond_2
    :try_start_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 171
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    :try_start_4
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->mContext:Landroid/content/Context;

    const/16 v4, 0x15

    invoke-virtual {v0, v3, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    sget-object v0, Lcom/amazon/identity/auth/device/dg;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "binding: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amazon/identity/auth/device/dg;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 177
    iput-boolean v1, p0, Lcom/amazon/identity/auth/device/dg;->jr:Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    monitor-exit p0

    return v1

    :cond_3
    :try_start_5
    const-string v0, "BindFailed"

    new-array v1, v2, [Ljava/lang/String;

    .line 182
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/amazon/identity/auth/device/dg;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bind failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dg;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    monitor-exit p0

    return v2

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "BindFailed"

    new-array v3, v2, [Ljava/lang/String;

    .line 189
    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcom/amazon/identity/auth/device/dg;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bind failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amazon/identity/auth/device/dg;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 191
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Lcom/amazon/identity/auth/device/dg$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/dg$a<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->jp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(Lcom/amazon/identity/auth/device/dg$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/dg$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 263
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->jq:Ljava/lang/Object;

    .line 266
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 271
    sget-object v0, Lcom/amazon/identity/auth/device/dg;->TAG:Ljava/lang/String;

    const-string v1, "Service was disconnected before task could execute; re-enqueuing task to run after service re-connects."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/dg;->f(Lcom/amazon/identity/auth/device/dg$a;)V

    return-void

    .line 280
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/dg$a;->d(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 284
    :catch_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dg$a;->onError()V

    return-void

    :catchall_0
    move-exception p1

    .line 266
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 220
    monitor-enter p0

    .line 222
    :try_start_0
    sget-object p1, Lcom/amazon/identity/auth/device/dg;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceConnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dg;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/dg;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dg;->jq:Ljava/lang/Object;

    .line 226
    iget-object p1, p0, Lcom/amazon/identity/auth/device/dg;->mQueue:Ljava/util/List;

    const/4 p2, 0x0

    .line 227
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dg;->mQueue:Ljava/util/List;

    .line 228
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/identity/auth/device/dg$a;

    .line 235
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg;->jn:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 228
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    monitor-enter p0

    .line 243
    :try_start_0
    sget-object p1, Lcom/amazon/identity/auth/device/dg;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceDisconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dg;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 244
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dg;->jq:Ljava/lang/Object;

    .line 245
    iget-object p1, p0, Lcom/amazon/identity/auth/device/dg;->jp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/dg$a;

    .line 247
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dg;->jn:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/amazon/identity/auth/device/dg$b;

    invoke-direct {v2, v0}, Lcom/amazon/identity/auth/device/dg$b;-><init>(Lcom/amazon/identity/auth/device/dg$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/dg;->jp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
