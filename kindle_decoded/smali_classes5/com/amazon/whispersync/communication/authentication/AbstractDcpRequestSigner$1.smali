.class Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner$1;->this$0:Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    invoke-static {}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "componentName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "onServiceConnected"

    const-string v2, "connected"

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner$1;->this$0:Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;

    iget-object p1, p1, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner$1;->this$0:Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;

    iget-object p1, p1, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mAuthService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner$1;->this$0:Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;

    iget-object p1, p1, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner$1;->this$0:Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;

    iget-object p1, p1, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner$1;->this$0:Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;

    iget-object p2, p2, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    invoke-static {}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "componentName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "onServiceDisconnected"

    const-string v2, "disconnected"

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner$1;->this$0:Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;

    iget-object p1, p1, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mAuthService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
