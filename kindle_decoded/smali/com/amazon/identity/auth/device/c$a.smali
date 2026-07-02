.class final Lcom/amazon/identity/auth/device/c$a;
.super Lcom/amazon/identity/auth/device/bk;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final f:J


# instance fields
.field private final g:Lcom/amazon/identity/auth/device/api/Callback;

.field private final h:Lcom/amazon/identity/auth/device/c$b;

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    .line 28
    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->d(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/c$a;->f:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/c$b;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bk;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/amazon/identity/auth/device/c$a;->g:Lcom/amazon/identity/auth/device/api/Callback;

    .line 39
    iput-object p1, p0, Lcom/amazon/identity/auth/device/c$a;->h:Lcom/amazon/identity/auth/device/c$b;

    .line 40
    iput-object p3, p0, Lcom/amazon/identity/auth/device/c$a;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/c$a;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/identity/auth/device/c$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/c$a;)V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->asyncOperationComplete()V

    return-void
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/c$a;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/identity/auth/device/c$a;->g:Lcom/amazon/identity/auth/device/api/Callback;

    return-object p0
.end method

.method static synthetic d(Lcom/amazon/identity/auth/device/c$a;)V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->asyncOperationComplete()V

    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Possible AccountManager Deadlock Detected!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 3

    monitor-enter p0

    .line 46
    :try_start_0
    sget-wide v0, Lcom/amazon/identity/auth/device/c$a;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/c$a;->i:Ljava/lang/String;

    invoke-super {p0, v0, v1, v2}, Lcom/amazon/identity/auth/device/bk;->run(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startAsyncOperation()V
    .locals 5

    .line 52
    new-instance v0, Lcom/amazon/identity/auth/device/c$a$1;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/c$a$1;-><init>(Lcom/amazon/identity/auth/device/c$a;)V

    .line 73
    invoke-static {}, Lcom/amazon/identity/auth/device/c;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/c$a;->i:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Pushing task %s on AccountAuthenticatorQueue."

    invoke-static {v1, v3, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lcom/amazon/identity/auth/device/c$a;->h:Lcom/amazon/identity/auth/device/c$b;

    invoke-interface {v1, v0}, Lcom/amazon/identity/auth/device/c$b;->a(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
