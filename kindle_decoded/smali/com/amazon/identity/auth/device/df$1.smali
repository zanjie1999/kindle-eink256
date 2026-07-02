.class Lcom/amazon/identity/auth/device/df$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/df;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jm:Lcom/amazon/identity/auth/device/df;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/df;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/identity/auth/device/df$1;->jm:Lcom/amazon/identity/auth/device/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 51
    invoke-static {}, Lcom/amazon/identity/auth/device/df;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Connected to service: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/amazon/identity/auth/device/df$1;->jm:Lcom/amazon/identity/auth/device/df;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/df;->a(Lcom/amazon/identity/auth/device/df;)Z

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/df$1;->jm:Lcom/amazon/identity/auth/device/df;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/df;->useService(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 61
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/df;->access$000()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "Service died: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/amazon/identity/auth/device/df$1;->jm:Lcom/amazon/identity/auth/device/df;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/df;->unbind()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/amazon/identity/auth/device/df$1;->jm:Lcom/amazon/identity/auth/device/df;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/df;->b(Lcom/amazon/identity/auth/device/df;)[Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/df$1;->jm:Lcom/amazon/identity/auth/device/df;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/df;->c(Lcom/amazon/identity/auth/device/df;)Landroid/content/ServiceConnection;

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lcom/amazon/identity/auth/device/df$1;->jm:Lcom/amazon/identity/auth/device/df;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/df;->serviceDisconnected()V

    .line 74
    invoke-static {}, Lcom/amazon/identity/auth/device/df;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Disconnected from service: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 72
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
