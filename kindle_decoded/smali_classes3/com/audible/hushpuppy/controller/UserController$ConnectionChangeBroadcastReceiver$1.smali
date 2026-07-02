.class Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver$1;
.super Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;Z)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;

    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected safeRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->access$500(Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;

    iget-object v0, v0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->this$0:Lcom/audible/hushpuppy/controller/UserController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/UserController;->access$600(Lcom/audible/hushpuppy/controller/UserController;)Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;->getCustomerToaEligibility()Lcom/audible/hushpuppy/service/user/CustomerStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    invoke-static {}, Lcom/audible/hushpuppy/controller/UserController;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Network call for Toa eligibility returned null customer status"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->access$500(Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    return-void

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;

    iget-object v1, v1, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->this$0:Lcom/audible/hushpuppy/controller/UserController;

    invoke-static {v1, v0}, Lcom/audible/hushpuppy/controller/UserController;->access$400(Lcom/audible/hushpuppy/controller/UserController;Lcom/audible/hushpuppy/service/user/CustomerStatus;)V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->access$700(Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;)V

    return-void
.end method
