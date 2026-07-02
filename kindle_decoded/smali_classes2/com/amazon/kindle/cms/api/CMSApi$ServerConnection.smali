.class final Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;
.super Ljava/lang/Object;
.source "CMSApi.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/CMSApi$CMSServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/CMSApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServerConnection"
.end annotation


# instance fields
.field private final m_callback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

.field private m_connected:Z

.field private m_disconnected:Z

.field private m_errored:Z

.field final synthetic this$0:Lcom/amazon/kindle/cms/api/CMSApi;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/api/CMSApi;Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->this$0:Lcom/amazon/kindle/cms/api/CMSApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p2, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->m_callback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;)V
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->onTimeout()V

    return-void
.end method

.method private onTimeout()V
    .locals 3

    .line 420
    iget-boolean v0, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->m_connected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->m_disconnected:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->m_errored:Z

    .line 424
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->safeUnbind()V

    .line 425
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->m_callback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v2, "connection timed out"

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;->onConnectException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method bind(Landroid/content/Intent;I)Z
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->this$0:Lcom/amazon/kindle/cms/api/CMSApi;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->access$400(Lcom/amazon/kindle/cms/api/CMSApi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 373
    iget-object p2, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->this$0:Lcom/amazon/kindle/cms/api/CMSApi;

    invoke-static {p2}, Lcom/amazon/kindle/cms/api/CMSApi;->access$600(Lcom/amazon/kindle/cms/api/CMSApi;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection$1;-><init>(Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 388
    iget-boolean p1, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->m_errored:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 394
    :try_start_0
    new-instance v0, Lcom/amazon/kindle/cms/api/CMSServerImpl;

    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->this$0:Lcom/amazon/kindle/cms/api/CMSApi;

    invoke-static {v1}, Lcom/amazon/kindle/cms/api/CMSApi;->access$400(Lcom/amazon/kindle/cms/api/CMSApi;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2}, Lcom/amazon/kindle/cms/api/CMSServerImpl;-><init>(Landroid/content/Context;Lcom/amazon/kindle/cms/api/CMSApi$CMSServiceConnection;Landroid/os/IBinder;)V

    .line 395
    iput-boolean p1, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->m_connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->m_callback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;->onConnect(Lcom/amazon/kindle/cms/api/CMSServer;)V

    return-void

    :catchall_0
    move-exception p2

    .line 399
    iput-boolean p1, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->m_errored:Z

    .line 400
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->m_callback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;->onConnectException(Ljava/lang/Throwable;)V

    .line 401
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->safeUnbind()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 411
    iget-boolean p1, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->m_connected:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 414
    iput-boolean p1, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->m_disconnected:Z

    .line 415
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->m_callback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

    invoke-interface {p1}, Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;->onDisconnect()V

    return-void
.end method

.method public safeUnbind()V
    .locals 1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->this$0:Lcom/amazon/kindle/cms/api/CMSApi;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->access$400(Lcom/amazon/kindle/cms/api/CMSApi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
