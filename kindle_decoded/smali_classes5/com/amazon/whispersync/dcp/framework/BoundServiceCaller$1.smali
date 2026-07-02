.class Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$1;
.super Ljava/lang/Object;
.source "BoundServiceCaller.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$1;->this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 49
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->access$000()Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Connected to service: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$1;->this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    invoke-static {v1, v0}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->access$102(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;Z)Z

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$1;->this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->useService(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->access$000()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "Service died: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$1;->this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->unbind()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$1;->this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->access$200(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;)[Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$1;->this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->access$302(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->access$000()Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Disconnected from service: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
