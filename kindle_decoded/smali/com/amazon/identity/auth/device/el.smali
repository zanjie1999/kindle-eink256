.class public Lcom/amazon/identity/auth/device/el;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final gW:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/identity/auth/device/el;->gW:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/el;->gW:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
