.class Lcom/amazon/identity/auth/device/di$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/di;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jA:Lcom/amazon/identity/auth/device/di;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/di;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amazon/identity/auth/device/di$1;->jA:Lcom/amazon/identity/auth/device/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/di$1;->jA:Lcom/amazon/identity/auth/device/di;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/di;->a(Lcom/amazon/identity/auth/device/di;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lcom/amazon/identity/auth/device/di$1;->jA:Lcom/amazon/identity/auth/device/di;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/di;->b(Lcom/amazon/identity/auth/device/di;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/di$1;->jA:Lcom/amazon/identity/auth/device/di;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/di;->b(Lcom/amazon/identity/auth/device/di;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 93
    throw v0
.end method
