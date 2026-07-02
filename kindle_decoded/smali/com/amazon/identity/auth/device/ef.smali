.class public abstract Lcom/amazon/identity/auth/device/ef;
.super Lcom/amazon/identity/auth/device/bk;
.source "DCP"


# static fields
.field private static final ll:Ljava/util/concurrent/Executor;


# instance fields
.field private final lm:Lcom/amazon/identity/auth/device/df;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MAP-SyncBoundServiceCallerThreadPool"

    .line 23
    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->dE(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ip;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ef;->ll:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bk;-><init>()V

    .line 28
    new-instance v0, Lcom/amazon/identity/auth/device/ef$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/ef$1;-><init>(Lcom/amazon/identity/auth/device/ef;Landroid/content/Context;Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ef;->lm:Lcom/amazon/identity/auth/device/df;

    return-void
.end method

.method static synthetic dW()Ljava/util/concurrent/Executor;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/identity/auth/device/ef;->ll:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method protected doneUsingService()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ef;->lm:Lcom/amazon/identity/auth/device/df;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/df;->unbind()V

    .line 74
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->asyncOperationComplete()V

    return-void
.end method

.method public startAsyncOperation()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ef;->lm:Lcom/amazon/identity/auth/device/df;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/df;->call()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ef;->doneUsingService()V

    :cond_0
    return-void
.end method

.method protected useService(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/ef;->useService(Landroid/os/IBinder;)V

    return-void
.end method

.method protected useService(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method
