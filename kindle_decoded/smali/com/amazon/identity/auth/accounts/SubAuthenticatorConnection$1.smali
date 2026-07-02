.class Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 59
    iget-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->b(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Z

    .line 61
    iget-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->c(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    sget-object v1, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Bound:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    .line 65
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-static {p2}, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/dcp/sso/ISubAuthenticator;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;Lcom/amazon/dcp/sso/ISubAuthenticator;)Lcom/amazon/dcp/sso/ISubAuthenticator;

    .line 67
    iget-object p2, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-static {p2}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->d(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;

    move-result-object p2

    .line 69
    invoke-static {}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->Y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected to SubAuthenticator in package %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-static {v4}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->e(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Lcom/amazon/identity/auth/device/aj;

    move-result-object v4

    iget-object v4, v4, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 70
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 74
    invoke-interface {p2}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;->K()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 70
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6

    .line 81
    iget-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->f(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Landroid/content/ServiceConnection;

    .line 83
    iget-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->c(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    sget-object v1, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Unbound:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    .line 87
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-static {v0}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->d(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;Lcom/amazon/dcp/sso/ISubAuthenticator;)Lcom/amazon/dcp/sso/ISubAuthenticator;

    .line 90
    invoke-static {}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->Y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Disconnected from SubAuthenticator in package %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    .line 91
    invoke-static {v5}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->e(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Lcom/amazon/identity/auth/device/aj;

    move-result-object v5

    iget-object v5, v5, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 92
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 96
    iget-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;->a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 92
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
