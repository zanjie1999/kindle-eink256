.class final Lcom/amazon/identity/auth/device/dn$b;
.super Lcom/amazon/identity/auth/device/dg$a;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/dg$a<",
        "Lcom/amazon/identity/auth/device/callback/IGenericIPC;",
        ">;",
        "Lcom/amazon/identity/auth/device/api/Callback;"
    }
.end annotation


# instance fields
.field private final g:Lcom/amazon/identity/auth/device/api/Callback;

.field private final jM:Landroid/os/Bundle;

.field private final jN:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/identity/auth/device/framework/IPCCommand;",
            ">;"
        }
    .end annotation
.end field

.field private jO:Z


# direct methods
.method private constructor <init>(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/lang/Class;Lcom/amazon/identity/auth/device/dg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/identity/auth/device/framework/IPCCommand;",
            ">;",
            "Lcom/amazon/identity/auth/device/dg<",
            "Lcom/amazon/identity/auth/device/callback/IGenericIPC;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p4}, Lcom/amazon/identity/auth/device/dg$a;-><init>(Lcom/amazon/identity/auth/device/dg;)V

    .line 46
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dn$b;->g:Lcom/amazon/identity/auth/device/api/Callback;

    .line 47
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dn$b;->jM:Landroid/os/Bundle;

    .line 48
    iput-object p3, p0, Lcom/amazon/identity/auth/device/dn$b;->jN:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/dn$b;->jO:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/lang/Class;Lcom/amazon/identity/auth/device/dg;B)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/dn$b;-><init>(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/lang/Class;Lcom/amazon/identity/auth/device/dg;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/callback/IGenericIPC;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->toRemoteCallback(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/callback/IRemoteCallback;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dg$a;->jt:Lcom/amazon/identity/auth/device/dg;

    invoke-virtual {v1, p0}, Lcom/amazon/identity/auth/device/dg;->c(Lcom/amazon/identity/auth/device/dg$a;)V

    .line 57
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dn$b;->jN:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dn$b;->jM:Landroid/os/Bundle;

    invoke-interface {p1, v1, v2, v0}, Lcom/amazon/identity/auth/device/callback/IGenericIPC;->call(Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/IRemoteCallback;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    check-cast p1, Lcom/amazon/identity/auth/device/callback/IGenericIPC;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/dn$b;->a(Lcom/amazon/identity/auth/device/callback/IGenericIPC;)V

    return-void
.end method

.method public onError()V
    .locals 1

    const-string v0, "Got an error while calling Generic IPC central store."

    .line 63
    invoke-static {v0}, Lcom/amazon/identity/auth/device/dn;->bk(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/dn$b;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onError(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    monitor-enter p0

    .line 88
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/dn$b;->jO:Z

    if-eqz v0, :cond_0

    .line 90
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/dn$b;->jO:Z

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg$a;->jt:Lcom/amazon/identity/auth/device/dg;

    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/dg;->d(Lcom/amazon/identity/auth/device/dg$a;)V

    .line 96
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dn$b;->g:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p1

    .line 94
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    monitor-enter p0

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/dn$b;->jO:Z

    if-eqz v0, :cond_0

    .line 74
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/dn$b;->jO:Z

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg$a;->jt:Lcom/amazon/identity/auth/device/dg;

    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/dg;->d(Lcom/amazon/identity/auth/device/dg$a;)V

    .line 80
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dn$b;->g:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p1

    .line 78
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
