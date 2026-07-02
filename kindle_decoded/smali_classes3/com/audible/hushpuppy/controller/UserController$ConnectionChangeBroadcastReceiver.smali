.class public final Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ConnectionChangeBroadcastReceiver"
.end annotation


# static fields
.field private static final MAX_NETWORK_CALL:I = 0x3


# instance fields
.field private final connectionChangeRunnable:Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;

.field private final filter:Landroid/content/IntentFilter;

.field private final networkCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/audible/hushpuppy/controller/UserController;


# direct methods
.method protected constructor <init>(Lcom/audible/hushpuppy/controller/UserController;)V
    .locals 1

    .line 351
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->this$0:Lcom/audible/hushpuppy/controller/UserController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 361
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->filter:Landroid/content/IntentFilter;

    .line 366
    new-instance p1, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver$1;-><init>(Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;Z)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->connectionChangeRunnable:Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;

    .line 385
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->networkCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$500(Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->networkCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$700(Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->resetAndUnregisterReceiver()V

    return-void
.end method

.method private resetAndUnregisterReceiver()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->networkCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 402
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->this$0:Lcom/audible/hushpuppy/controller/UserController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/UserController;->access$900(Lcom/audible/hushpuppy/controller/UserController;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->filter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 390
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->this$0:Lcom/audible/hushpuppy/controller/UserController;

    invoke-static {p1}, Lcom/audible/hushpuppy/controller/UserController;->access$100(Lcom/audible/hushpuppy/controller/UserController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/hushpuppy/common/system/AndroidUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->this$0:Lcom/audible/hushpuppy/controller/UserController;

    invoke-static {p1}, Lcom/audible/hushpuppy/controller/UserController;->access$800(Lcom/audible/hushpuppy/controller/UserController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->connectionChangeRunnable:Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
