.class final Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;
.super Ljava/lang/Object;
.source "CMSServerWrapper.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/CMSServerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServerConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/cms/api/CMSServerWrapper;Lcom/amazon/kindle/cms/api/CMSServerWrapper$1;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;-><init>(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/amazon/kindle/cms/api/CMSServer;)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$100(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    invoke-static {v0, p1}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$202(Lcom/amazon/kindle/cms/api/CMSServerWrapper;Lcom/amazon/kindle/cms/api/CMSServer;)Lcom/amazon/kindle/cms/api/CMSServer;

    .line 450
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    sget-object v0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->CONNECTED:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    invoke-static {p1, v0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$302(Lcom/amazon/kindle/cms/api/CMSServerWrapper;Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;)Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    .line 451
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    invoke-static {p1}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$400(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    invoke-static {p1}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$100(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$100(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onConnectException(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$100(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$202(Lcom/amazon/kindle/cms/api/CMSServerWrapper;Lcom/amazon/kindle/cms/api/CMSServer;)Lcom/amazon/kindle/cms/api/CMSServer;

    .line 466
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    sget-object v1, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->ERROR:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    invoke-static {v0, v1}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$302(Lcom/amazon/kindle/cms/api/CMSServerWrapper;Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;)Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    .line 467
    invoke-static {}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection exception occurred when connecting to CMS"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    invoke-static {p1}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$100(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$100(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onDisconnect()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$100(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$202(Lcom/amazon/kindle/cms/api/CMSServerWrapper;Lcom/amazon/kindle/cms/api/CMSServer;)Lcom/amazon/kindle/cms/api/CMSServer;

    .line 482
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    sget-object v1, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->CONNECTING:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    invoke-static {v0, v1}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$302(Lcom/amazon/kindle/cms/api/CMSServerWrapper;Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;)Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$100(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;->this$0:Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    invoke-static {v1}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->access$100(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
