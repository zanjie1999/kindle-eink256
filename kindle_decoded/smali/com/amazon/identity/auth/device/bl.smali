.class public Lcom/amazon/identity/auth/device/bl;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;
.implements Lcom/amazon/identity/auth/device/api/MAPFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/api/Callback;",
        "Lcom/amazon/identity/auth/device/api/MAPFuture<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.bl"


# instance fields
.field private final dG:Ljava/util/concurrent/CountDownLatch;

.field private g:Lcom/amazon/identity/auth/device/api/Callback;

.field private gD:Landroid/os/Bundle;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/DefaultCallback;->nullToDefault(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bl;->g:Lcom/amazon/identity/auth/device/api/Callback;

    .line 103
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bl;->dG:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lcom/amazon/identity/auth/device/bl;->mState:I

    return-void
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 2

    .line 233
    monitor-enter p0

    .line 235
    :try_start_0
    iget v0, p0, Lcom/amazon/identity/auth/device/bl;->mState:I

    if-eqz v0, :cond_0

    .line 237
    sget-object p1, Lcom/amazon/identity/auth/device/bl;->TAG:Ljava/lang/String;

    const-string p2, "Callback was called twice"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    monitor-exit p0

    return-void

    .line 242
    :cond_0
    iput-object p2, p0, Lcom/amazon/identity/auth/device/bl;->gD:Landroid/os/Bundle;

    .line 243
    iput p1, p0, Lcom/amazon/identity/auth/device/bl;->mState:I

    .line 247
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bl;->g:Lcom/amazon/identity/auth/device/api/Callback;

    const/4 v1, 0x0

    .line 252
    iput-object v1, p0, Lcom/amazon/identity/auth/device/bl;->g:Lcom/amazon/identity/auth/device/api/Callback;

    .line 253
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bl;->dG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 257
    invoke-static {p1, p2, v0}, Lcom/amazon/identity/auth/device/bl;->a(ILandroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 253
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static a(ILandroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 295
    invoke-interface {p2, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 298
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 292
    :cond_2
    invoke-interface {p2, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method private declared-synchronized bt()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    monitor-enter p0

    .line 266
    :try_start_0
    iget v0, p0, Lcom/amazon/identity/auth/device/bl;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 271
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/bl;->gD:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw v0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bl;->gD:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private bu()V
    .locals 2

    .line 304
    invoke-static {}, Lcom/amazon/identity/auth/device/jf;->gR()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call get on the main thread, unless you want ANRs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/bl;
    .locals 1

    .line 113
    instance-of v0, p0, Lcom/amazon/identity/auth/device/bl;

    if-eqz v0, :cond_0

    .line 115
    check-cast p0, Lcom/amazon/identity/auth/device/bl;

    return-object p0

    .line 119
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bl;->bu()V

    .line 166
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bl;->dG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bl;->bt()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 169
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/bl;->TAG:Ljava/lang/String;

    const-string p2, "Timed out waiting for result!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bs()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bl;->bu()V

    .line 156
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bl;->dG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 157
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bl;->bt()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bl;->bs()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/bl;->a(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public onError(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    .line 185
    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/bl;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 179
    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/bl;->a(ILandroid/os/Bundle;)V

    return-void
.end method
