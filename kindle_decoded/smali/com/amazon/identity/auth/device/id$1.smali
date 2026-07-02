.class final Lcom/amazon/identity/auth/device/id$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/id;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic qR:Ljava/lang/Runnable;

.field final synthetic qS:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amazon/identity/auth/device/id$1;->qR:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/id$1;->qS:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/id$1;->qR:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v0, p0, Lcom/amazon/identity/auth/device/id$1;->qS:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/id$1;->qS:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 32
    throw v0
.end method
