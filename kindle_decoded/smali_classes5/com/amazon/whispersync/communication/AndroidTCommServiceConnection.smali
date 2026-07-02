.class public Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field protected static final BIND_SERVICE_WAIT_MS:I = 0x7d0

.field public static final TCOMM_INTENT_ACTION:Ljava/lang/String; = "com.amazon.whispersync.communication.TCOMM"

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mServiceConnectedCondition:Ljava/util/concurrent/locks/Condition;

.field protected final mServiceConnectedHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lamazon/whispersync/communication/ServiceConnectedHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected final mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

.field protected final mTCommService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm:AndroidTCommServiceConnection"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedCondition:Ljava/util/concurrent/locks/Condition;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mTCommService:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedHandlers:Ljava/util/List;

    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->bindTCommService()V

    return-void
.end method

.method private notifyServiceConnectedHandlers()V
    .locals 4

    sget-object v0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mServiceConnectedHandlers.size()"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "notifyServiceConnectedHandlers"

    const-string v3, "notifying handlers"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamazon/whispersync/communication/ServiceConnectedHandler;

    invoke-interface {v1}, Lamazon/whispersync/communication/ServiceConnectedHandler;->onServiceConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bindTCommService()V
    .locals 5

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.amazon.whispersync.communication.TCOMM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sget-object v1, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "bindResult"

    aput-object v4, v2, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "bindTCommService"

    const-string v3, "bound service"

    invoke-virtual {v1, v0, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mTCommService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    sget-object v0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "componentName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "onServiceConnected"

    const-string/jumbo v2, "service connected"

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object p1, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mTCommService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->notifyServiceConnectedHandlers()V

    :try_start_0
    iget-object p1, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    sget-object v0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "componentName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "onServiceDisconnected"

    const-string/jumbo v2, "service disconnected"

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mTCommService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public registerServiceConnectedHandler(Lamazon/whispersync/communication/ServiceConnectedHandler;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mTCommService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->notifyServiceConnectedHandlers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "handler must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unbindTCommService()V
    .locals 4

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "unbindTCommService"

    const-string/jumbo v3, "unbound service"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public waitForService()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/TCommServiceDownException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mTCommService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "waitForService"

    const-string/jumbo v6, "waiting for service to bind"

    invoke-virtual {v2, v5, v6, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mTCommService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v6, v7, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    sget-object v0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "elapsed"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "finished waiting for service to bind"

    invoke-virtual {v0, v5, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    :try_start_2
    sget-object v0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v1, "timed out waiting for service binder"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lamazon/whispersync/communication/TCommServiceDownException;

    const-string v1, "Timed out waiting for service binder"

    invoke-direct {v0, v1}, Lamazon/whispersync/communication/TCommServiceDownException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v2, "interrupted waiting for service binder"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lamazon/whispersync/communication/TCommServiceDownException;

    const-string v2, "Interrupted waiting for service binder"

    invoke-direct {v1, v2, v0}, Lamazon/whispersync/communication/TCommServiceDownException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
